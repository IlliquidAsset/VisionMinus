.class public final enum Lcn/sharesdk/line/utils/a;
.super Ljava/lang/Enum;
.source "IdTokenKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/line/utils/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/line/utils/a;

.field private static final synthetic b:[Lcn/sharesdk/line/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcn/sharesdk/line/utils/a;

    const-string v1, "JWK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/line/utils/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/line/utils/a;->a:Lcn/sharesdk/line/utils/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/sharesdk/line/utils/a;

    aput-object v0, v1, v2

    .line 7
    sput-object v1, Lcn/sharesdk/line/utils/a;->b:[Lcn/sharesdk/line/utils/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/line/utils/a;
    .locals 1

    .line 7
    const-class v0, Lcn/sharesdk/line/utils/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/line/utils/a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/line/utils/a;
    .locals 1

    .line 7
    sget-object v0, Lcn/sharesdk/line/utils/a;->b:[Lcn/sharesdk/line/utils/a;

    invoke-virtual {v0}, [Lcn/sharesdk/line/utils/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/line/utils/a;

    return-object v0
.end method
