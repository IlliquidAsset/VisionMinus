.class public Lcom/xiao/nicevideoplayer/Clarity;
.super Ljava/lang/Object;
.source "Clarity.java"


# instance fields
.field public grade:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/Clarity;->grade:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/xiao/nicevideoplayer/Clarity;->p:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    return-void
.end method
