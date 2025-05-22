.class Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;
.super Ljava/lang/Object;
.source "SmoothScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverScrollInterpolator"
.end annotation


# instance fields
.field private defaultInt:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;->defaultInt:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x399d4952    # 3.0E-4f
        0x3a9d4952    # 0.0012f
        0x3b2a64c3    # 0.0026f
        0x3b9a0275    # 0.0047f
        0x3bef34d7    # 0.0073f
        0x3c2a64c3    # 0.0104f
        0x3c656042    # 0.014f
        0x3c95182b    # 0.0182f
        0x3cbac711    # 0.0228f
        0x3ce56042    # 0.028f
        0x3d09a027    # 0.0336f
        0x3d229c78    # 0.0397f
        0x3d3da512    # 0.0463f
        0x3d5a511a    # 0.0533f
        0x3d79096c    # 0.0608f
        0x3d8c7e28    # 0.0686f
        0x3d9d7dbf    # 0.0769f
        0x3daf1aa0    # 0.0855f
        0x3dc1bda5
        0x3dd4fdf4    # 0.104f
        0x3de90ff9    # 0.1138f
        0x3dfdbf48    # 0.1239f
        0x3e09a027    # 0.1344f
        0x3e14af4f    # 0.1452f
        0x3e200d1b    # 0.1563f
        0x3e2b9f56    # 0.1676f
        0x3e379a6b    # 0.1793f
        0x3e43e426    # 0.1913f
        0x3e50624e    # 0.2035f
        0x3e5d2f1b    # 0.216f
        0x3e6a3055    # 0.2287f
        0x3e778034    # 0.2417f
        0x3e827525    # 0.2548f
        0x3e895183    # 0.2682f
        0x3e903afb    # 0.2817f
        0x3e974bc7    # 0.2955f
        0x3e9e69ad    # 0.3094f
        0x3ea5a1cb    # 0.3235f
        0x3eace704    # 0.3377f
        0x3eb43958    # 0.352f
        0x3ebba5e3    # 0.3665f
        0x3ec3126f    # 0.381f
        0x3eca9931    # 0.3957f
        0x3ed21ff3    # 0.4104f
        0x3ed9c0ec    # 0.4253f
        0x3ee154ca    # 0.4401f
        0x3ee902de    # 0.4551f
        0x3ef0a3d7    # 0.47f
        0x3ef851ec    # 0.485f
        0x3f000000    # 0.5f
        0x3f03d70a    # 0.515f
        0x3f07ae14    # 0.53f
        0x3f0b7e91    # 0.5449f
        0x3f0f559b    # 0.5599f
        0x3f132618    # 0.5748f
        0x3f16f007    # 0.5896f
        0x3f1ab368    # 0.6043f
        0x3f1e76c9    # 0.619f
        0x3f222d0e    # 0.6335f
        0x3f25e354    # 0.648f
        0x3f298c7e    # 0.6623f
        0x3f2d2f1b    # 0.6765f
        0x3f30cb29    # 0.6906f
        0x3f345a1d    # 0.7045f
        0x3f37e282    # 0.7183f
        0x3f3b573f    # 0.7318f
        0x3f3ec56d    # 0.7452f
        0x3f421ff3    # 0.7583f
        0x3f4573eb    # 0.7713f
        0x3f48b439    # 0.784f
        0x3f4be76d    # 0.7965f
        0x3f4f06f7    # 0.8087f
        0x3f521965    # 0.8207f
        0x3f55182b    # 0.8324f
        0x3f580347    # 0.8438f
        0x3f5ad42c    # 0.8548f
        0x3f5d97f6    # 0.8656f
        0x3f604817    # 0.8761f
        0x3f62de01    # 0.8862f
        0x3f656042    # 0.896f
        0x3f67c84b    # 0.9054f
        0x3f6a1cac    # 0.9145f
        0x3f6c5048    # 0.9231f
        0x3f6e703b    # 0.9314f
        0x3f706f69    # 0.9392f
        0x3f725aee    # 0.9467f
        0x3f7425af    # 0.9537f
        0x3f75d639    # 0.9603f
        0x3f7765fe    # 0.9664f
        0x3f78d4fe    # 0.972f
        0x3f7a29c7    # 0.9772f
        0x3f7b573f    # 0.9818f
        0x3f7c6a7f    # 0.986f
        0x3f7d566d    # 0.9896f
        0x3f7e2196    # 0.9927f
        0x3f7ecbfb    # 0.9953f
        0x3f7f559b    # 0.9974f
        0x3f7fb15b    # 0.9988f
        0x3f7fec57    # 0.9997f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/SmoothScroller$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;->defaultInt:[F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    aget p1, v0, p1

    return p1
.end method
