.class public Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;
.super Ljava/lang/Object;
.source "ManagePostPhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewContentUpdatedEvent"
.end annotation


# instance fields
.field public mContent:Lcom/airbnb/android/models/groups/Content;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Content;)V
    .registers 2
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 441
    return-void
.end method
