.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$5;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPendingMessage()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1200(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 430
    return-void
.end method
