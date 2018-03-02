port module Main exposing (..)

import Html exposing (Html, text, div, h1, h2, h3, h4, img, p, ul, li, a)
import Html.Attributes exposing (src, class, href)


---- MODEL ----


type alias Model =
    {}


port windowTitle : String -> Cmd msg


init : ( Model, Cmd Msg )
init =
    ( {}, windowTitle "Alex Piqueras" )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Alex" ]
            , h2 [] [ text "Piqueras" ]
            ]
        , div [ class "content" ]
            [ div [ class "left" ]
                [ div [ class "title" ]
                    [ h3 [] [ text "Contact" ]
                    ]
                , p []
                    [ a [ href "mailto:alex@piqueras.me" ]
                        [ text "alex@piqueras.me" ]
                    ]
                , h4 [] [ text "email" ]
                , p []
                    [ a [ href "tel:+34662681403" ]
                        [ text "(+34) 662 68 14 03" ]
                    ]
                , h4 [] [ text "phone number" ]
                , p []
                    [ a [ href "https://github.com/alomsimoy" ]
                        [ text "github.com/alomsimoy" ]
                    ]
                , h4 [] [ text "github" ]
                , div [ class "title" ]
                    [ h3 [] [ text "Studies" ]
                    ]
                , p [] [ text "Network System Administration" ]
                , h4 [] [ text "Sant Josep Obrer (2015 - 2016)" ]
                , div [ class "title" ]
                    [ h3 [] [ text "Knowledge" ]
                    ]
                , p [] [ text "Javascript, ES8, PHP, Python, SQL, bash, HTML,\n                CSS, C" ]
                , h4 [] [ text "programming languages" ]
                , p [] [ text "React, Redux, Webpack, Symfony" ]
                , h4 [] [ text "frameworks/libraries" ]
                , p [] [ text "Linux, Git, Docker, Scrum" ]
                , h4 [] [ text "tools" ]
                , p [] [ text "B and C spanish driving license" ]
                , h4 [] [ text "others" ]
                ]
            , div [ class "right" ]
                [ div [ class "title" ]
                    [ h3 [] [ text "Experience" ]
                    ]
                , p [] [ text "Software devoper in Analitia" ]
                , h4 [] [ text "oct. 2015 - oct. 2017" ]
                , ul []
                    [ li [] [ text "Full Stack Developer" ]
                    , li [] [ text "Wordpress plugin development" ]
                    , li [] [ text "PHP/Symfony" ]
                    , li [] [ text "Doctrine/MySQL" ]
                    , li [] [ text "JavaScript/ES8" ]
                    , li [] [ text "React/Redux" ]
                    , li [] [ text "Docker" ]
                    , li [] [ text "Amazon Web Services, EC2, S3" ]
                    , li [] [ text "API integration with Facebook, Twitter,\n                    LinkedIn, WordPress, Pinterest..." ]
                    , li [] [ text "REST API + HATEOAS + Oauth" ]
                    ]
                , p [] [ text "Software devoper in Brújula (for Odigeo)" ]
                , h4 [] [ text "oct. 2017 - today" ]
                , ul []
                    [ li [] [ text "Frontend developer" ]
                    , li [] [ text "Backbone.js" ]
                    , li [] [ text "Java" ]
                    , li [] [ text "Cucumber/Selenium" ]
                    ]
                , div [ class "title" ]
                    [ h3 [] [ text "Languages" ]
                    ]
                , p [] [ text "Spanish, Catalan" ]
                , h4 [] [ text "native" ]
                , p [] [ text "English" ]
                , h4 [] [ text "high" ]
                ]
            ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
