.class public Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendationWrapper"
.end annotation


# instance fields
.field public recommendation:Lcom/airbnb/android/models/Recommendation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommendation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method