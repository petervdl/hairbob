.class Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;
.super Ljava/lang/Object;
.source "BaseContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/BaseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommentsWrapper"
.end annotation


# instance fields
.field public comment:Lcom/airbnb/android/models/groups/Comment;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
