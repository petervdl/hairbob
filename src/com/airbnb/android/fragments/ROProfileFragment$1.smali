.class Lcom/airbnb/android/fragments/ROProfileFragment$1;
.super Ljava/lang/Object;
.source "ROProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;->drawUser(Lcom/airbnb/android/models/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$1;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment$1;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROProfileFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment$1;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$1;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    iget v1, v1, Lcom/airbnb/android/fragments/ROProfileFragment;->mTopImageHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->adjustScroll(I)V

    .line 189
    :cond_15
    return-void
.end method
