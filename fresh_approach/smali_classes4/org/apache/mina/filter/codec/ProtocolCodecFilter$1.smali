.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;
.super Ljava/lang/Object;
.source "ProtocolCodecFilter.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

.field final synthetic val$decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

.field final synthetic val$encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;


# direct methods
.method constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;->this$0:Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;->val$encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    iput-object p3, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;->val$decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 0

    .line 106
    iget-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;->val$decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-object p1
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;->val$encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object p1
.end method
