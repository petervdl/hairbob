.class Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;
.super Ljava/lang/Object;
.source "InfiniteRecommendedGroupsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SectionWrapper"
.end annotation


# instance fields
.field public section:Lcom/airbnb/android/models/groups/GroupsSection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "section"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
