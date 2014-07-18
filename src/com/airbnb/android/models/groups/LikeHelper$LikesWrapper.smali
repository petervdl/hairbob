.class public Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;
.super Ljava/lang/Object;
.source "LikeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/LikeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LikesWrapper"
.end annotation


# instance fields
.field public like:Lcom/airbnb/android/models/groups/Like;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "like"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
