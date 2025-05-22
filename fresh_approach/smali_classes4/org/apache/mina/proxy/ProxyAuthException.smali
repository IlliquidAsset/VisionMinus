.class public Lorg/apache/mina/proxy/ProxyAuthException;
.super Ljavax/security/sasl/SaslException;
.source "ProxyAuthException.java"


# static fields
.field private static final serialVersionUID:J = -0x5a5dd6cc5fdc073cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
