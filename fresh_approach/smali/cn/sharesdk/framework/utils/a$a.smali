.class public final enum Lcn/sharesdk/framework/utils/a$a;
.super Ljava/lang/Enum;
.source "Oauth1Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/a$a;

.field public static final enum b:Lcn/sharesdk/framework/utils/a$a;

.field private static final synthetic c:[Lcn/sharesdk/framework/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 197
    new-instance v0, Lcn/sharesdk/framework/utils/a$a;

    const-string v1, "HMAC_SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    new-instance v0, Lcn/sharesdk/framework/utils/a$a;

    const-string v1, "PLAINTEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/sharesdk/framework/utils/a$a;

    .line 196
    sget-object v4, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcn/sharesdk/framework/utils/a$a;->c:[Lcn/sharesdk/framework/utils/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/a$a;
    .locals 1

    .line 196
    const-class v0, Lcn/sharesdk/framework/utils/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/a$a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/a$a;
    .locals 1

    .line 196
    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->c:[Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/a$a;

    return-object v0
.end method
