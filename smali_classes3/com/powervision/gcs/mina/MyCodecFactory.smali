.class public Lcom/powervision/gcs/mina/MyCodecFactory;
.super Ljava/lang/Object;
.source "MyCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private decoder:Lcom/powervision/gcs/mina/MyDataDecoder;

.field private encoder:Lcom/powervision/gcs/mina/MyDataEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/powervision/gcs/mina/MyDataEncoder;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/MyDataEncoder;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/MyCodecFactory;->encoder:Lcom/powervision/gcs/mina/MyDataEncoder;

    .line 13
    new-instance v0, Lcom/powervision/gcs/mina/MyDataDecoder;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/MyDataDecoder;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/MyCodecFactory;->decoder:Lcom/powervision/gcs/mina/MyDataDecoder;

    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object p1, p0, Lcom/powervision/gcs/mina/MyCodecFactory;->decoder:Lcom/powervision/gcs/mina/MyDataDecoder;

    return-object p1
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object p1, p0, Lcom/powervision/gcs/mina/MyCodecFactory;->encoder:Lcom/powervision/gcs/mina/MyDataEncoder;

    return-object p1
.end method
