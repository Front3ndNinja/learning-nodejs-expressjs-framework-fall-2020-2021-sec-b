//declaration
const express 			= require('express');	
const bodyParser 		= require('body-parser');
const exSession 		= require('express-session');
const cookieParser 		= require('cookie-parser');

const login				= require('./controllers/hmlogin');
const logout			= require('./controllers/hmlogout');
const home				= require('./controllers/hmhome');
const comment			= require('./controllers/hmcomment');
const path				= require('path');

const user				= require('./controllers/hmuser');
const app				= express();
const port				= 3000;


//configuration
app.set('view engine', 'ejs');


//middleware
app.use('/public', express.static('public'));
app.use(bodyParser.urlencoded({extended: true}));
app.use(cookieParser());
app.use(exSession({secret: 'super secret value', saveUninitialized: true, resave: false}));



app.use('/login', login);
app.use('/home', home);
app.use('/logout', logout);
app.use('/user', user);
app.use('/comment', comment);
// app.use('/eusers', eusers);


//router
app.get('/', (req, res)=>{
	res.send('Welcome');
});

//server startup
app.listen(port, (error)=>{
	console.log('server started at '+port);
});
