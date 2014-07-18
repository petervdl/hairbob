.class final Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;
.super Ljava/lang/Object;
.source "ShareIntentListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ShareIntentListAdapter;->makeAppPickerDialog(Landroid/content/Context;Landroid/content/Intent;Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/airbnb/android/adapters/ShareIntentListAdapter;

.field final synthetic val$baseIntent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intentHandler:Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ShareIntentListAdapter;Landroid/content/Intent;Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$adapter:Lcom/airbnb/android/adapters/ShareIntentListAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$baseIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$intentHandler:Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;

    iput-object p4, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    iget-object v3, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$adapter:Lcom/airbnb/android/adapters/ShareIntentListAdapter;

    invoke-virtual {v3, p2}, Lcom/airbnb/android/adapters/ShareIntentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 79
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$baseIntent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/airbnb/android/enums/CustomShareActivities;->getEnum(Ljava/lang/String;)Lcom/airbnb/android/enums/CustomShareActivities;

    move-result-object v0

    .line 82
    .local v0, "csa":Lcom/airbnb/android/enums/CustomShareActivities;
    iget-object v3, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$intentHandler:Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;

    iget-object v4, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$baseIntent:Landroid/content/Intent;

    invoke-interface {v3, v4, v0}, Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;->buildIntentForPackage(Landroid/content/Intent;Lcom/airbnb/android/enums/CustomShareActivities;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "finalIntent":Landroid/content/Intent;
    if-eqz v1, :cond_28

    .line 84
    iget-object v3, p0, Lcom/airbnb/android/adapters/ShareIntentListAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    :cond_28
    return-void
.end method
