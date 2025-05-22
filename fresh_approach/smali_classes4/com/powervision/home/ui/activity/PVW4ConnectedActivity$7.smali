.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$7;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->startOutAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$7;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 376
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 380
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$7;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$500(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
