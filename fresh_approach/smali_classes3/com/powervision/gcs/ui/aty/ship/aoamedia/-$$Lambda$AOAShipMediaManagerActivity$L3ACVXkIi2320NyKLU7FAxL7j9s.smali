.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$3:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    iput p5, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$3:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    iget v4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->lambda$checkMd5AndRename$2$AOAShipMediaManagerActivity(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V

    return-void
.end method
