.class public Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterLand.java"


# static fields
.field private static final DESIGN_CELL_WIDTH_L:I = 0xa0

.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_L:I = 0x500

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1


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

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p2, p1

    const/high16 v0, 0x44a00000    # 1280.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 52
    div-int v0, p1, v0

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 54
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    .line 55
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    :goto_0
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    const/high16 v0, 0x42980000    # 76.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 56
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->logoHeight:I

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 57
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->paddingTop:I

    const/high16 v0, 0x42500000    # 52.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 58
    iput p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->bottomHeight:I

    .line 59
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    sub-int/2addr p2, v1

    div-int/2addr p1, p2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cellHeight:I

    .line 60
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->panelHeight:I

    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    .line 66
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v1, v0, v1

    .line 67
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_0
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    mul-int v1, v1, v5

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v4, v2, v3

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v1, v0, v1

    .line 73
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_2
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v1, v2, v3

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    :goto_0
    if-ge v3, v0, :cond_3

    .line 80
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v1, v3, v1

    .line 81
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    mul-int v4, v4, v1

    sub-int v1, v3, v4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
