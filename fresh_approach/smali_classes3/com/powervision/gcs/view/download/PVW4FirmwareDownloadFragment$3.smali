.class Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$3;
.super Ljava/lang/Object;
.source "PVW4FirmwareDownloadFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sort(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/powervision/gcs/manager/W4Firmware;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$3;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/powervision/gcs/manager/W4Firmware;Lcom/powervision/gcs/manager/W4Firmware;)I
    .locals 0

    .line 679
    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 676
    check-cast p1, Lcom/powervision/gcs/manager/W4Firmware;

    check-cast p2, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$3;->compare(Lcom/powervision/gcs/manager/W4Firmware;Lcom/powervision/gcs/manager/W4Firmware;)I

    move-result p1

    return p1
.end method
