.class public Lorg/apache/http/cookie/CookieRestrictionViolationException;
.super Lorg/apache/http/cookie/MalformedCookieException;
.source "CookieRestrictionViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x664be3b3ef7da655L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/http/cookie/MalformedCookieException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    return-void
.end method
