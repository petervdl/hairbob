.class Lcom/airbnb/android/fragments/CompanionServicesFragment$2;
.super Ljava/lang/Object;
.source "CompanionServicesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CompanionServicesFragment;->createServiceListGroupedCell(Ljava/lang/String;Z)Lcom/airbnb/android/views/GroupedCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;->val$title:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/fragments/CompanionServicesFragment;->finishAndReturnResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->access$100(Lcom/airbnb/android/fragments/CompanionServicesFragment;Ljava/lang/String;)V

    .line 108
    return-void
.end method
