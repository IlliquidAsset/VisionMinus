.class public Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterPort.java"


# static fields
.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_P:I = 0x2d0

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1

.field private static final LINE_SIZE_P:I = 0x4

.field private static final PAGE_SIZE_P:I = 0xc


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x4

    .line 51
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    int-to-float v1, p1

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 54
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    .line 55
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    :goto_0
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    const/high16 v2, 0x42980000    # 76.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 56
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->logoHeight:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 57
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->paddingTop:I

    const/high16 v2, 0x42500000    # 52.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 58
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->bottomHeight:I

    .line 59
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    if-gt p1, v0, :cond_1

    .line 61
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    rsub-int/lit8 p2, p2, 0xc

    if-gt p1, p2, :cond_2

    .line 63
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    goto :goto_1

    .line 65
    :cond_2
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    :goto_1
    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-ge v0, v4, :cond_1

    .line 72
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    div-int v5, v0, v5

    .line 73
    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    rem-int v6, v0, v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 76
    :cond_0
    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    mul-int v5, v5, v6

    new-array v1, v1, [I

    aput v5, v1, v3

    aput v3, v1, v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_1
    div-int/lit8 v5, v0, 0xc

    .line 79
    rem-int/lit8 v6, v0, 0xc

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    .line 82
    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    :goto_0
    if-ge v2, v0, :cond_3

    .line 86
    div-int/lit8 v1, v2, 0xc

    .line 87
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    mul-int/lit8 v1, v1, 0xc

    sub-int v1, v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
