.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

.field public final synthetic f$1:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$1:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$1:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    iget v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->lambda$null$1$AOAShipMediaManagerActivity(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V

    return-void
.end method
