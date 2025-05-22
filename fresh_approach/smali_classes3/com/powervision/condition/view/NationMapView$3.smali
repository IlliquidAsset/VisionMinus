.class Lcom/powervision/condition/view/NationMapView$3;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/view/NationMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/view/NationMapView;


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$3;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMapParentTouch(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "NationMapView"

    const-string v1, "OnMapParentTouch: "

    .line 765
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$3;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$000(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$3;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$000(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
