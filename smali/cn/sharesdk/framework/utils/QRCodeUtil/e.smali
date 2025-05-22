.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/e;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field private static final synthetic m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 20
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 25
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 30
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 38
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "MIN_SIZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 46
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 54
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "MARGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 60
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "PDF417_COMPACT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 67
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "PDF417_COMPACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 73
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "PDF417_DIMENSIONS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 82
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "AZTEC_LAYERS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 88
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "QR_VERSION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 94
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "GS1_FORMAT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const/16 v1, 0xc

    new-array v1, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 9
    sget-object v14, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v14, v1, v2

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v3

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v4

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v5

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v6

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v7

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v8

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v9

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v10

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v11

    sget-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .locals 1

    .line 9
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .locals 1

    .line 9
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-object v0
.end method
