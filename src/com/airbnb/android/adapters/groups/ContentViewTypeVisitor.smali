.class public Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;
.super Ljava/lang/Object;
.source "ContentViewTypeVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;
    }
.end annotation


# instance fields
.field private mViewType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getViewTypeCount()I
    .registers 1

    .prologue
    .line 16
    invoke-static {}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->values()[Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public getViewType()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->mViewType:I

    return v0
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 3
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    sget-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->PHOTO_CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->mViewType:I

    .line 37
    :goto_e
    return-void

    .line 35
    :cond_f
    sget-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->mViewType:I

    goto :goto_e
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 27
    sget-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->EVENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->mViewType:I

    .line 28
    return-void
.end method
