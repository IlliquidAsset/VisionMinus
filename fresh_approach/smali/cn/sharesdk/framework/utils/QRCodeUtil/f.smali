.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/f;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field private static final e:[Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field private static final synthetic g:[Lcn/sharesdk/framework/utils/QRCodeUtil/f;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    .line 9
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    .line 11
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const-string v1, "Q"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    .line 13
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const/4 v1, 0x4

    new-array v6, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    .line 4
    sget-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    aput-object v7, v6, v2

    sget-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    aput-object v8, v6, v3

    sget-object v9, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    aput-object v9, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->g:[Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    new-array v1, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    aput-object v8, v1, v2

    aput-object v7, v1, v3

    aput-object v0, v1, v4

    aput-object v9, v1, v5

    .line 15
    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->e:[Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/f;
    .locals 1

    .line 4
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/f;
    .locals 1

    .line 4
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->g:[Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->f:I

    return v0
.end method
