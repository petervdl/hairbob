.class Lcom/airbnb/android/activities/DebugMenuActivity$5;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/DebugMenuActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-static {}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->newInstance()Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    move-result-object v0

    .line 205
    .local v0, "fragment":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;
    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity$5;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->setListener(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;)V

    .line 232
    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "switch_endpoint"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 234
    return-void
.end method
