.class public final Lme/jingbin/library/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ShimmerLayout:[I

.field public static final ShimmerLayout_shimmer_angle:I = 0x0

.field public static final ShimmerLayout_shimmer_animation_duration:I = 0x1

.field public static final ShimmerLayout_shimmer_auto_start:I = 0x2

.field public static final ShimmerLayout_shimmer_color:I = 0x3

.field public static final ShimmerLayout_shimmer_gradient_center_color_width:I = 0x4

.field public static final ShimmerLayout_shimmer_mask_width:I = 0x5

.field public static final ShimmerLayout_shimmer_reverse_animation:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/jingbin/library/R$styleable;->ShimmerLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040401
        0x7f040402
        0x7f040403
        0x7f040404
        0x7f040405
        0x7f040406
        0x7f040407
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
