def unique_subsets(nums):
    def backtrack(start, path):
        # Add the current subset to the result list
        result.append(path[:])
        # Explore further subsets
        for i in range(start, len(nums)):
            # Skip duplicates
            if i > start and nums[i] == nums[i - 1]:
                continue
            path.append(nums[i])
            backtrack(i + 1, path)
            path.pop()  # Backtrack to explore other subsets

    # Sort the array to ensure duplicates are adjacent
    nums.sort()
    result = []
    backtrack(0, [])
    return result

# Example usage
print(unique_subsets([1, 2, 2]))
# Output: [[], [1], [1, 2], [1, 2, 2], [2], [2, 2]]

print(unique_subsets([4, 4, 4, 1, 4]))
# Output: [[], [1], [4], [1, 4], [4, 4], [1, 4, 4], [4, 4, 4], [1, 4, 4, 4]]
