.class public final enum Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
.super Ljava/lang/Enum;
.source "LineAuthenticationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/line/utils/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/line/utils/LineAuthenticationParams$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

.field public static final enum b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

.field private static final synthetic c:[Lcn/sharesdk/line/utils/LineAuthenticationParams$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->a:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    .line 104
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    const-string v1, "aggressive"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    .line 94
    sget-object v4, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->a:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->c:[Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
    .locals 1

    .line 94
    const-class v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
    .locals 1

    .line 94
    sget-object v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->c:[Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    invoke-virtual {v0}, [Lcn/sharesdk/line/utils/LineAuthenticationParams$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-object v0
.end method
