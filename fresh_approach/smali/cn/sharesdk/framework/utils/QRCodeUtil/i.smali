.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/i;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field private static final synthetic m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;


# instance fields
.field private final k:[I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 10
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "TERMINATOR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 11
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "NUMERIC"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 12
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v3, "ALPHANUMERIC"

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 13
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "STRUCTURED_APPEND"

    invoke-direct {v0, v3, v1, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 14
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const-string v3, "BYTE"

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v2, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 15
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const-string v3, "ECI"

    const/4 v8, 0x5

    const/4 v9, 0x7

    invoke-direct {v0, v3, v8, v2, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 16
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const-string v3, "KANJI"

    const/4 v10, 0x6

    const/16 v11, 0x8

    invoke-direct {v0, v3, v10, v2, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 17
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const-string v3, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v3, v9, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 18
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const-string v3, "FNC1_SECOND_POSITION"

    const/16 v12, 0x9

    invoke-direct {v0, v3, v11, v2, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 20
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const-string v3, "HANZI"

    const/16 v13, 0xd

    invoke-direct {v0, v3, v12, v2, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/16 v2, 0xa

    new-array v2, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 8
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v3, v2, v4

    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v3, v2, v5

    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v3, v2, v6

    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v3, v2, v1

    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v1, v2, v7

    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v1, v2, v8

    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v1, v2, v10

    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v1, v2, v9

    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    aput-object v1, v2, v11

    aput-object v0, v2, v12

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xc
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xb
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->k:[I

    .line 27
    iput p4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/i;
    .locals 1

    .line 8
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/i;
    .locals 1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 82
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->l:I

    return v0
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/l;)I
    .locals 1

    .line 69
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/l;->a()I

    move-result p1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 78
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->k:[I

    aget p1, v0, p1

    return p1
.end method
