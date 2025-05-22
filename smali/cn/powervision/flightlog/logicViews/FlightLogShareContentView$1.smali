.class Lcn/powervision/flightlog/logicViews/FlightLogShareContentView$1;
.super Ljava/lang/Object;
.source "FlightLogShareContentView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->doScaleAnima()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView$1;->this$0:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView$1;->this$0:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    invoke-static {p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->access$000(Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  onAnimation   end  ..."

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
