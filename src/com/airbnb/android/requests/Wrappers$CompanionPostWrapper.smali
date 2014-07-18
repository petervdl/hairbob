.class public Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompanionPostWrapper"
.end annotation


# instance fields
.field public companionPost:Lcom/airbnb/android/models/localcompanion/CompanionPost;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "companion_post"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
