.class public final enum Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;
.super Ljava/lang/Enum;
.source "BrowserCompatSpecFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

.field public static final enum SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

.field public static final enum SECURITYLEVEL_IE_MEDIUM:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    const-string v1, "SECURITYLEVEL_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    .line 56
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    const-string v1, "SECURITYLEVEL_IE_MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_IE_MEDIUM:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    .line 54
    sget-object v4, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->$VALUES:[Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;
    .locals 1

    .line 54
    const-class v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->$VALUES:[Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-virtual {v0}, [Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    return-object v0
.end method
