.class public Lcom/powervision/gcs/mina/SonarCodecFactory;
.super Ljava/lang/Object;
.source "SonarCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private decoder:Lcom/powervision/gcs/mina/SonarDataDecoder;

.field private encoder:Lcom/powervision/gcs/mina/MyDataEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/powervision/gcs/mina/MyDataEncoder;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/MyDataEncoder;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/SonarCodecFactory;->encoder:Lcom/powervision/gcs/mina/MyDataEncoder;

    .line 19
    new-instance v0, Lcom/powervision/gcs/mina/SonarDataDecoder;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/SonarDataDecoder;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/SonarCodecFactory;->decoder:Lcom/powervision/gcs/mina/SonarDataDecoder;

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

    .line 24
    iget-object p1, p0, Lcom/powervision/gcs/mina/SonarCodecFactory;->decoder:Lcom/powervision/gcs/mina/SonarDataDecoder;

    return-object p1
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/powervision/gcs/mina/SonarCodecFactory;->encoder:Lcom/powervision/gcs/mina/MyDataEncoder;

    return-object p1
.end method
