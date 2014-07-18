.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3$1;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->onResponse(Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # invokes: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->startPollingForLatestThreads()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$600(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V

    .line 247
    return-void
.end method
