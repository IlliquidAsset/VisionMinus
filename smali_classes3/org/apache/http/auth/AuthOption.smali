.class public final Lorg/apache/http/auth/AuthOption;
.super Ljava/lang/Object;
.source "AuthOption.java"


# instance fields
.field private final authScheme:Lorg/apache/http/auth/AuthScheme;

.field private final creds:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Auth scheme"

    .line 44
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User credentials"

    .line 45
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    .line 47
    iput-object p2, p0, Lorg/apache/http/auth/AuthOption;->creds:Lorg/apache/http/auth/Credentials;

    return-void
.end method


# virtual methods
.method public getAuthScheme()Lorg/apache/http/auth/AuthScheme;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method public getCredentials()Lorg/apache/http/auth/Credentials;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->creds:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
