.class public final Lcom/tmall/ultraviewpager/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmall/ultraviewpager/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_clipToPadding:I = 0x1

.field public static final RecyclerView_android_descendantFocusability:I = 0x2

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static final RecyclerView_layoutManager:I = 0x8

.field public static final RecyclerView_reverseLayout:I = 0x9

.field public static final RecyclerView_spanCount:I = 0xa

.field public static final RecyclerView_stackFromEnd:I = 0xb

.field public static final UltraViewPager:[I

.field public static final UltraViewPager_upv_automeasure:I = 0x0

.field public static final UltraViewPager_upv_autoscroll:I = 0x1

.field public static final UltraViewPager_upv_disablescroll:I = 0x2

.field public static final UltraViewPager_upv_infiniteloop:I = 0x3

.field public static final UltraViewPager_upv_itemratio:I = 0x4

.field public static final UltraViewPager_upv_multiscreen:I = 0x5

.field public static final UltraViewPager_upv_ratio:I = 0x6

.field public static final UltraViewPager_upv_scrollmode:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tmall/ultraviewpager/R$styleable;->RecyclerView:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f0401e8
        0x7f0401e9
        0x7f0401ea
        0x7f0401eb
        0x7f0401ec
        0x7f0402a9
        0x7f0403c2
        0x7f04041e
        0x7f040430
    .end array-data

    :array_1
    .array-data 4
        0x7f0404e9
        0x7f0404ea
        0x7f0404eb
        0x7f0404ec
        0x7f0404ed
        0x7f0404ee
        0x7f0404ef
        0x7f0404f0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
