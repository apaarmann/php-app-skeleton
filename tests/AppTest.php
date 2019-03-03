<?php

namespace Apaar\Tests;

use Apaar\App;
use PHPUnit\Framework\TestCase;

class AppTest extends TestCase
{
    /**
     * @var App
     */
    private $app;

    public function setUp(): void
    {
        $this->app = new App();
    }

    public function testHello(): void
    {
        $response = $this->app->run();
        $this->assertNotNull($response);
    }
}
