#!/bin/bash

STATE_CONNECTING=0
STATE_CONNECTION_ESTABLISHED=1
STATE_PREPARE_SHIPS=2
STATE_WAITING_FOR_ENEMY_TO_PREPARE_SHIPS=3
STATE_MY_TURN=4
STATE_ENEMY_TURN=5
STATE_TURN_RESULT=6
STATE_GAME_END=7

state=$STATE_CONNECTING

#sleepTime=0.0166666667
sleepTime=0.0333333333

columns=0
lines=0
drawnState=''
