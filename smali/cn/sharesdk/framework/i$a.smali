.class final enum Lcn/sharesdk/framework/i$a;
.super Ljava/lang/Enum;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/i$a;

.field public static final enum b:Lcn/sharesdk/framework/i$a;

.field private static final synthetic c:[Lcn/sharesdk/framework/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 610
    new-instance v0, Lcn/sharesdk/framework/i$a;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;

    .line 611
    new-instance v0, Lcn/sharesdk/framework/i$a;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/sharesdk/framework/i$a;

    .line 609
    sget-object v4, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcn/sharesdk/framework/i$a;->c:[Lcn/sharesdk/framework/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/i$a;
    .locals 1

    .line 609
    const-class v0, Lcn/sharesdk/framework/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/i$a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/i$a;
    .locals 1

    .line 609
    sget-object v0, Lcn/sharesdk/framework/i$a;->c:[Lcn/sharesdk/framework/i$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/i$a;

    return-object v0
.end method
