.class public Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "InfiniteRecommendedGroupsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "groups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$GroupWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private mSectionWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Properties;ILjava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "params"    # Ljava/util/Properties;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "I",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "existingGroupSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;>;"
    const-string/jumbo v0, "groups/infinite_recommendations"

    invoke-direct {p0, v0, p1, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 43
    iput p2, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mOffset:I

    .line 44
    return-void
.end method

.method private static getOffset(Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "existingGroupSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    const/4 v2, 0x0

    .line 34
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 35
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 36
    goto :goto_9

    .line 37
    .end local v0    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    :cond_1b
    return v2
.end method

.method private getSections()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .local v2, "sections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/airbnb/android/models/groups/GroupsSection;>;"
    iget-object v4, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mSectionWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;

    .line 72
    .local v3, "wrapper":Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;
    iget-object v1, v3, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;->section:Lcom/airbnb/android/models/groups/GroupsSection;

    .line 73
    .local v1, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsSection;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    .line 75
    .end local v1    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    .end local v3    # "wrapper":Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest$SectionWrapper;
    :cond_21
    return-object v2
.end method

.method public static moreRecommendedGroupsRequest(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "existingGroupSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;>;"
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 26
    .local v1, "params":Ljava/util/Properties;
    const-string/jumbo v2, "membership_limit"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->getOffset(Ljava/util/Map;)I

    move-result v0

    .line 28
    .local v0, "offset":I
    const-string/jumbo v2, "offset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;

    invoke-direct {v2, v1, v0, p0, p1}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;-><init>(Ljava/util/Properties;ILjava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v2
.end method

.method private preProcessGroups()V
    .registers 5

    .prologue
    .line 64
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;

    .line 65
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mGroupList:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;->group:Lcom/airbnb/android/models/groups/Group;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 67
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    :cond_1a
    return-void
.end method


# virtual methods
.method public getGroupsSections(Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "existingGroupSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->getSections()Landroid/util/SparseArray;

    move-result-object v4

    .line 88
    .local v4, "sections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/airbnb/android/models/groups/GroupsSection;>;"
    iget-object v5, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mGroupList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Group;

    .line 89
    .local v0, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->getSectionId()I

    move-result v3

    .line 90
    .local v3, "sectionId":I
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 91
    .local v2, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 92
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2e
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 96
    .end local v0    # "group":Lcom/airbnb/android/models/groups/Group;
    .end local v2    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    .end local v3    # "sectionId":I
    :cond_38
    return-object p1
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mOffset:I

    return v0
.end method

.method public hasResults()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->mGroupList:Ljava/util/List;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->preProcessGroups()V

    .line 61
    return-void
.end method
