.class final synthetic Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$Lambda$1;->arg$1:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$Lambda$1;->arg$1:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->lambda$setEnabled$2$FirebaseMessaging$AutoInit()V

    return-void
.end method
