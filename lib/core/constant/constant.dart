// NAME PAGE
const WELCOME = "/welcome";
const LOGIN_PAGE = "/login";
const REGISTERR_PAGE = "/register";
const HOME_PAGE = "/home_page";
const DETAIL_PAGE = "/detail_page";
const REGITER_PAGE = "/register_page";
const FORM_RESERVATION = "/form_reservation";
const PAYMENT = "/payment_page";
const RESERVATION_PAGE = "/reservation";
const DETAIL_PAYMENT_PAGE = "/detail_payment_page";
const PROFILE_PAGE = "/profile";

// const BASE_URL = "http://10.9.0.16:5000/api";
const BASE_URL = "http://192.168.1.16:5000/api";
// ENDPOINT
const _PREFIX_AUTH = "/auth";
const GET_ROOMS = "/rooms";
const RESERVATION = "/reservations";
const ADD_RESERVATION = "${RESERVATION}/create";
const PAYMENT_METHODS = "/payment-methods";
const PAYMENTS = "/payments";



const LOGIN = "${_PREFIX_AUTH}/login";
const REGISTER = "${_PREFIX_AUTH}/register";

const CONTENT_TYPE = 'application/json';

const PREF_AUTH = "pref_auth";
const PREF_NAME = "pref_name";
const PREF_EMAIL = "pref_email";
const PREF_PHONE = "pref_phone";
const PREF_GENDER = "pref_gender";
const PREF_ADDRESS = "pref_address";
