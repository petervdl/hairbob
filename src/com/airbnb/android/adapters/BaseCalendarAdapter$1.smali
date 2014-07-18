.class Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;
.super Lcom/airbnb/android/utils/EasyCache;
.source "BaseCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/utils/EasyCache",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    invoke-direct {p0}, Lcom/airbnb/android/utils/EasyCache;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 4
    .param p1, "position"    # Ljava/lang/Integer;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;->transform(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
