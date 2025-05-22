.class Lcom/powervision/airmap/mapview/AirMapView$1;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/airmap/mapview/AirMapView;->checkGoogleMapService(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/airmap/mapview/AirMapView;


# direct methods
.method constructor <init>(Lcom/powervision/airmap/mapview/AirMapView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView$1;->this$0:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
