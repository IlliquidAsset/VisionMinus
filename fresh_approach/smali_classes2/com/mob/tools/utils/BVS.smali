.class public final Lcom/mob/tools/utils/BVS;
.super Ljava/lang/Object;
.source "BVS.java"


# static fields
.field public static HAS_SS:Ljava/lang/Integer;


# instance fields
.field public aid:Ljava/lang/String;

.field public bsi:Ljava/lang/String;

.field public btnm:Ljava/lang/String;

.field public isi:Ljava/lang/String;

.field public sdp:Ljava/lang/String;

.field public ssi:Ljava/lang/String;

.field public ssn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-2"

    .line 12
    iput-object v0, p0, Lcom/mob/tools/utils/BVS;->ssn:Ljava/lang/String;

    const-string v0, "-1"

    .line 14
    iput-object v0, p0, Lcom/mob/tools/utils/BVS;->btnm:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/mob/tools/utils/BVS;->bsi:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/mob/tools/utils/BVS;->ssi:Ljava/lang/String;

    return-void
.end method
