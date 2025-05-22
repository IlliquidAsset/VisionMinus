.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;
.super Ljava/lang/RuntimeException;
.source "GridGroupedsGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuntimePlatformSupportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a5f9f5d38e819daL


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Ljava/lang/Exception;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    .line 1093
    invoke-static {}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$900()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
