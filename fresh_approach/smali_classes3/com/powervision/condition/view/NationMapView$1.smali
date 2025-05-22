.class Lcom/powervision/condition/view/NationMapView$1;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->checkGoogleMapService(Z)Z
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

    .line 237
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$1;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
