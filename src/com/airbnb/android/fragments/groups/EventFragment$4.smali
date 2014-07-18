.class Lcom/airbnb/android/fragments/groups/EventFragment$4;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EventFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/EventFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->getLat()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->getLng()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method
