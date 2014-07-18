.class public Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseContentDeletedEvent"
.end annotation


# instance fields
.field public mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field public mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 3
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 287
    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 288
    return-void
.end method
