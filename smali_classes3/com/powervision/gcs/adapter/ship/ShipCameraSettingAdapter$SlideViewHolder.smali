.class public Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$SlideViewHolder;
.super Ljava/lang/Object;
.source "ShipCameraSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideViewHolder"
.end annotation


# instance fields
.field public mSwtich:Lcom/kyleduo/switchbutton/SwitchButton;

.field public scollSelectView:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

.field public title:Landroid/widget/TextView;

.field public values:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
