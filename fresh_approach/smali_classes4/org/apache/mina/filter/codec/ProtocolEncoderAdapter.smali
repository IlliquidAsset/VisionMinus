.class public abstract Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.super Ljava/lang/Object;
.source "ProtocolEncoderAdapter.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
