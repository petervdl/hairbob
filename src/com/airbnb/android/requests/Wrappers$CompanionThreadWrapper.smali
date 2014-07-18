.class public Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompanionThreadWrapper"
.end annotation


# instance fields
.field public companionThread:Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "companion_thread"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
