<?php
$I = new AcceptanceTester($scenario);
$I->wantTo('check home page has a white header');

$I->amOnPage('/');

$headerBackgroundColor = $I->getCSSValue('nav#header', 'background-color');

$I->assertEquals('rgba(255, 255, 255, 0.9)', $headerBackgroundColor);
