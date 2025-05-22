.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$2;
.super Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.source "AirLapseFreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/String;
    .locals 0

    const-string p1, "|"

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method
