.class public Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;
.super Ljava/lang/Object;
.source "NewContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentCreatedEvent"
.end annotation


# instance fields
.field public mContent:Lcom/airbnb/android/models/groups/BaseContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 2
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 433
    return-void
.end method
